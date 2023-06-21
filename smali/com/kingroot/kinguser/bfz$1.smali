.class Lcom/kingroot/kinguser/bfz$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bfz;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bod:Lcom/kingroot/kinguser/bfz;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bfz;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/kingroot/kinguser/bfz$1;->bod:Lcom/kingroot/kinguser/bfz;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/kingroot/kinguser/bfz$1;->bod:Lcom/kingroot/kinguser/bfz;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfz;->a(Lcom/kingroot/kinguser/bfz;)Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnx:Z

    .line 119
    invoke-static {}, Lcom/kingroot/kinguser/bfs;->aaI()Lcom/kingroot/kinguser/bfs;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bfz$1;->bod:Lcom/kingroot/kinguser/bfz;

    invoke-static {v1}, Lcom/kingroot/kinguser/bfz;->a(Lcom/kingroot/kinguser/bfz;)Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bfs;->e(Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)V

    .line 120
    iget-object v0, p0, Lcom/kingroot/kinguser/bfz$1;->bod:Lcom/kingroot/kinguser/bfz;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfz;->a(Lcom/kingroot/kinguser/bfz;)Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->dQ(Z)V

    .line 121
    return-void
.end method
