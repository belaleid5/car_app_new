import 'package:car_app_new/core/common/model/car_review_model.dart';
import 'package:car_app_new/core/services/api/api_services.dart';
import 'package:car_app_new/features/user_feature/reviews/data/model/review_reesponse_model.dart';

abstract class RemoteReviewsDataSource{
  Future<ReviewResponseModel>addReview(ReviewModel request);
}




class  BaseReviewsDataSource implements RemoteReviewsDataSource{
  BaseReviewsDataSource({required this.apiService});

  final ApiService apiService;
  @override
  Future<ReviewResponseModel> addReview(ReviewModel request) {
    
     final result = apiService.addReview(request);
     return result;
  }


}