.class Lcom/kingroot/kinguser/bbp$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bbp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bfC:Lcom/kingroot/kinguser/bbp;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bbp;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/kingroot/kinguser/bbp$1;->bfC:Lcom/kingroot/kinguser/bbp;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 156
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 157
    iget-object v0, p0, Lcom/kingroot/kinguser/bbp$1;->bfC:Lcom/kingroot/kinguser/bbp;

    invoke-static {v0}, Lcom/kingroot/kinguser/bbp;->a(Lcom/kingroot/kinguser/bbp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/kingroot/kinguser/bbp$1;->bfC:Lcom/kingroot/kinguser/bbp;

    invoke-static {v0}, Lcom/kingroot/kinguser/bbp;->b(Lcom/kingroot/kinguser/bbp;)V

    .line 160
    :cond_0
    return-void
.end method
