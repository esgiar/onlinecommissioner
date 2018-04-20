function loadContext (file) {
  try {
    return require(file)
  } catch (e) {
    return null
  }
}

module.exports = {
  loadContext
}
