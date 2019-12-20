import React from 'react';
import {NavigationStackScreenProps} from 'react-navigation-stack';
import {SignUp2} from './signUp2.component';

export class SignUp2Container extends React.Component {
  static navigationOptions = {
    header: null,
  };
  
  navigationKey = 'SignUp2Container';

  onSignUpPress = (data) => {
    this.props.navigation.goBack();
  };

  onSignInPress = () => {
    this.props.navigation.navigate({
      key: this.navigationKey,
      routeName: 'Sign In 2',
    });
  };

  onPhotoPress = () => {};

  render() {
    return (
      <SignUp2
        onSignUpPress={this.onSignUpPress}
        onSignInPress={this.onSignInPress}
        onPhotoPress={this.onPhotoPress}
      />
    );
  }
}
