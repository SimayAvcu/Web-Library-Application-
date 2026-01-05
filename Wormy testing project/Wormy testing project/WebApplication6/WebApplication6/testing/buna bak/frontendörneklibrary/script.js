
document.getElementById('searchInput').addEventListener('keyup', function () {
  // Değişkenler tanımlanır.
  var input, filter, cards, card, title, author, i;
  // 'input' değişkeni, 'searchInput' öğesine atanır.
  input = document.getElementById('searchInput');
  // 'filter' değişkeni, metin girişinin değerinin büyük harflerle tutulur.
  filter = input.value.toUpperCase();
  // 'cards' değişkeni, 'bookList' öğesine ait 'bookCard' sınıfına sahip tüm öğeleri içerir.
  cards = document.getElementById("bookList").getElementsByClassName('bookCard');

  // Tüm kitap kartları üzerinde döngü gerçekleştirilir.
  for (i = 0; i < cards.length; i++) {
    // Her bir kitap kartı için ilgili öğe ve bilgiler alınır.
    card = cards[i];
    // 'title' değişkeni, kitabın adının büyük harflerle tutulan değeridir.
    title = card.dataset.name.toUpperCase();
    // 'author' değişkeni, kitabın yazarının büyük harflerle tutulan değeridir.
    //dataset, HTML elementlerinin özel veri özelliklerine (data attributes) erişim sağlamak için kullanılan bir özelliktir. 
    author = card.dataset.author.toUpperCase();
    // Eğer arama filtresi, kitap adını veya yazarı içeriyorsa, kitap kartı görünür yapılır. Aksi takdirde gizlenir.
    if (title.includes(filter) || author.includes(filter)) {
      card.style.display = "";
    } else {
      card.style.display = "none";
    }
  }
  // 'bookList' öğesi, kitap kartlarını içeren bölgenin görünür hale gelmesini sağlar.
  document.getElementById('bookList').style.display = "flex";
});

// Kategori filtreleme işlevi
document.querySelectorAll('input[type=checkbox]').forEach(function (checkbox) {
  checkbox.addEventListener('change', function () {
    var selectedCategories = Array.from(document.querySelectorAll('input[type=checkbox]:checked')).map(function (checkbox) {
      return checkbox.value;
    });
    var cards = document.getElementById("bookList").getElementsByClassName('bookCard');
    for (var i = 0; i < cards.length; i++) {
      var card = cards[i];
      var category = card.dataset.category;
      if (selectedCategories.length === 0 || selectedCategories.includes(category)) {
        card.style.display = "";
      } else {
        card.style.display = "none";
      }
    }
    document.getElementById('bookList').style.display = "flex";
  });
});
function performLogin() {
  // Formdaki giriş bilgilerini al
  var username = document.getElementById('username').value;
  var email = document.getElementById('email').value;
  var password = document.getElementById('password').value;

  // Kullanıcı adı, e-posta ve şifre boş mu kontrol et
  if (!username || !email || !password) {
    alert('Lütfen tüm alanları doldurun.');
    return;
  }

  // Sunucu tarafından sağlanan bir kullanıcı veritabanında simüle edilen kullanıcı bilgileri
  var simulatedUser = {
    username: 'exampleUser',
    email: 'user@example.com',
    password: 'examplePassword'
  };

  // Girilen bilgileri simüle edilen kullanıcı ile karşılaştır
  if (username === simulatedUser.username && email === simulatedUser.email && password === simulatedUser.password) {
    // Kullanıcı başarılı bir şekilde giriş yaptı
    alert('Giriş başarılı! Hoş geldiniz, ' + username + '!');
    // TODO: Gerçek bir uygulamada bu noktada genellikle bir oturum (session) başlatılır.
  } else {
    // Kimlik doğrulama başarısız oldu
    alert('Giriş başarısız. Lütfen kullanıcı adı, e-posta ve şifrenizi kontrol edin.');
  }
}
// JavaScript functions
function openLoginForm() {
  document.getElementById('loginModal').style.display = 'block';
}

function closeLoginForm() {
  document.getElementById('loginModal').style.display = 'none';
}

function checkPassword() {
  // Burada şifre kontrolü yapabilirsiniz.
  var username = document.getElementById('username').value;
  var email = document.getElementById('email').value;
  var password = document.getElementById('password').value;

  // Örnek bir şifre kontrolü, burayı kendi gereksinimlerinize göre özelleştirebilirsiniz.
  if (password === 'gecerliSifre') {
    alert('Giriş başarılı! Kullanıcı Adı: ' + username + ', E-posta: ' + email);
    closeLoginForm();
  } else {
    alert('Hatalı şifre! Lütfen doğru şifreyi girin.');
  }

}


