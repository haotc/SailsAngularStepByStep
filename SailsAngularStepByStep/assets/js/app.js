/**
 * Created by conghao92 on 6/28/2014.
 */
Application.factory('Food', ['$resource', function($resource){
    return $resource('/food/:id', {id:'@id'});
}]);

function FoodController($scope, Food){
    $scope.food = Food.query();

    $scope.isFormActive = false;

    $scope.toggleForm = function(){
        if ($scope.isFormActive){
            $scope.isFormActive = false;
            return;
        }

        $scope.isFormActive = true;
        $scope.editableFood = new Food();
    };

    $scope.addFood = function(){
        $scope.editableFood.$save();
        $scope.food.push($scope.editableFood);
        $scope.toggleForm();
    };
};