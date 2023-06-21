.class Lcom/kingroot/kinguser/md;
.super Lcom/kingroot/kinguser/nj;
.source "SourceFile"


# instance fields
.field final synthetic vF:Ljava/lang/String;

.field final synthetic vG:Lcom/kingroot/kinguser/mc;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/mc;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/kingroot/kinguser/md;->vG:Lcom/kingroot/kinguser/mc;

    iput-object p2, p0, Lcom/kingroot/kinguser/md;->vF:Ljava/lang/String;

    invoke-direct {p0}, Lcom/kingroot/kinguser/nj;-><init>()V

    return-void
.end method


# virtual methods
.method public ca()V
    .locals 2

    .prologue
    .line 140
    invoke-static {}, Lcom/kingroot/kinguser/lt;->eg()Lcom/kingroot/kinguser/lt;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/md;->vF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/lt;->bj(Ljava/lang/String;)V

    .line 141
    return-void
.end method
