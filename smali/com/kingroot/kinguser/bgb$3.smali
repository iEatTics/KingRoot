.class Lcom/kingroot/kinguser/bgb$3;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bgb;->q(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic amB:I

.field final synthetic bnG:Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

.field final synthetic boE:Lcom/kingroot/kinguser/bgb;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bgb;Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;I)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/kingroot/kinguser/bgb$3;->boE:Lcom/kingroot/kinguser/bgb;

    iput-object p2, p0, Lcom/kingroot/kinguser/bgb$3;->bnG:Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    iput p3, p0, Lcom/kingroot/kinguser/bgb$3;->amB:I

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb$3;->bnG:Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnx:Z

    .line 180
    invoke-static {}, Lcom/kingroot/kinguser/bfs;->aaI()Lcom/kingroot/kinguser/bfs;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bgb$3;->bnG:Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bfs;->e(Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)V

    .line 181
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb$3;->bnG:Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->dQ(Z)V

    .line 182
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb$3;->boE:Lcom/kingroot/kinguser/bgb;

    invoke-static {v0}, Lcom/kingroot/kinguser/bgb;->a(Lcom/kingroot/kinguser/bgb;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/bgb$3;->amB:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb$3;->boE:Lcom/kingroot/kinguser/bgb;

    invoke-static {v0}, Lcom/kingroot/kinguser/bgb;->b(Lcom/kingroot/kinguser/bgb;)V

    .line 184
    return-void
.end method
