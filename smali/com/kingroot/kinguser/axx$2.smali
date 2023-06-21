.class Lcom/kingroot/kinguser/axx$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axx;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bbC:Lcom/kingroot/kinguser/afk;

.field final synthetic bcp:Lcom/kingroot/kinguser/axx;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axx;Lcom/kingroot/kinguser/afk;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/kingroot/kinguser/axx$2;->bcp:Lcom/kingroot/kinguser/axx;

    iput-object p2, p0, Lcom/kingroot/kinguser/axx$2;->bbC:Lcom/kingroot/kinguser/afk;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 278
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 280
    iget-object v1, p0, Lcom/kingroot/kinguser/axx$2;->bbC:Lcom/kingroot/kinguser/afk;

    iget-object v1, v1, Lcom/kingroot/kinguser/afk;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    invoke-static {}, Lcom/kingroot/kinguser/ahl;->xm()Lcom/kingroot/kinguser/ahl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ahl;->removeProtectedPackages(Ljava/util/List;)V

    .line 282
    return-void
.end method
