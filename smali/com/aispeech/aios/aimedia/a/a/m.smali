.class Lcom/aispeech/aios/aimedia/a/a/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ximalaya/speechcontrol/IMainDataCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ximalaya/speechcontrol/IMainDataCallback",
        "<",
        "Lcom/ximalaya/ting/android/opensdk/model/track/SearchTrackList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/aispeech/aios/aimedia/a/a/k;


# direct methods
.method constructor <init>(Lcom/aispeech/aios/aimedia/a/a/k;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/aimedia/a/a/m;->a:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ximalaya/ting/android/opensdk/model/track/SearchTrackList;)V
    .locals 3

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/m;->a:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-static {v0, p1}, Lcom/aispeech/aios/aimedia/a/a/k;->a(Lcom/aispeech/aios/aimedia/a/a/k;Lcom/ximalaya/ting/android/opensdk/model/track/SearchTrackList;)Lcom/ximalaya/ting/android/opensdk/model/track/SearchTrackList;

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/m;->a:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/a/k;->q(Lcom/aispeech/aios/aimedia/a/a/k;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/m;->a:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/a/k;->r(Lcom/aispeech/aios/aimedia/a/a/k;)Lcom/ximalaya/ting/android/opensdk/model/track/SearchTrackList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/m;->a:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/a/k;->r(Lcom/aispeech/aios/aimedia/a/a/k;)Lcom/ximalaya/ting/android/opensdk/model/track/SearchTrackList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/track/SearchTrackList;->getTracks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "AIOS-AIMedia-XimalayaProxy-Ting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get searchTrackList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aispeech/aios/aimedia/a/a/m;->a:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-static {v2}, Lcom/aispeech/aios/aimedia/a/a/k;->r(Lcom/aispeech/aios/aimedia/a/a/k;)Lcom/ximalaya/ting/android/opensdk/model/track/SearchTrackList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/model/track/SearchTrackList;->getTracks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/m;->a:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/a/k;->s(Lcom/aispeech/aios/aimedia/a/a/k;)V

    return-void

    :cond_0
    const-string v0, "AIOS-AIMedia-XimalayaProxy-Ting"

    const-string v1, "get searchTrackList 0"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public errCallBack(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/m;->a:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/a/k;->t(Lcom/aispeech/aios/aimedia/a/a/k;)V

    const-string v0, "AIOS-AIMedia-XimalayaProxy-Ting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SearchTrackList error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic successCallBack(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/ximalaya/ting/android/opensdk/model/track/SearchTrackList;

    invoke-virtual {p0, p1}, Lcom/aispeech/aios/aimedia/a/a/m;->a(Lcom/ximalaya/ting/android/opensdk/model/track/SearchTrackList;)V

    return-void
.end method
