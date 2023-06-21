.class Lcom/kingroot/kinguser/axt$3;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axt;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bbB:Lcom/kingroot/kinguser/axt;

.field final synthetic bbC:Lcom/kingroot/kinguser/afk;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axt;Lcom/kingroot/kinguser/afk;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/kingroot/kinguser/axt$3;->bbB:Lcom/kingroot/kinguser/axt;

    iput-object p2, p0, Lcom/kingroot/kinguser/axt$3;->bbC:Lcom/kingroot/kinguser/afk;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 294
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 295
    invoke-static {}, Lcom/kingroot/kinguser/agy;->wk()Lcom/kingroot/kinguser/agy;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axt$3;->bbC:Lcom/kingroot/kinguser/afk;

    iget-object v1, v1, Lcom/kingroot/kinguser/afk;->mPackageName:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/agy;->p(Ljava/lang/String;I)V

    .line 296
    return-void
.end method
