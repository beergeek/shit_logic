class shit_logic::c_000 {

  include pe::mcollective::server

  mcollective::server::setting { 'identity':
    value => $::clientcert,
  }

}
