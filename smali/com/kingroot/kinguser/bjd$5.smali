.class Lcom/kingroot/kinguser/bjd$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bjd$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bjd;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bwa:Lcom/kingroot/kinguser/bjd;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjd;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/kingroot/kinguser/bjd$5;->bwa:Lcom/kingroot/kinguser/bjd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lcom/kingroot/kinguser/bji;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingroot/kinguser/bji",
            "<",
            "Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd$5;->bwa:Lcom/kingroot/kinguser/bjd;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bji;->isChecked()Z

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/kingroot/kinguser/bjd;->a(Lcom/kingroot/kinguser/bjd;Lcom/kingroot/kinguser/bji;Z)V

    .line 170
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd$5;->bwa:Lcom/kingroot/kinguser/bjd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjd;->b(Lcom/kingroot/kinguser/bjd;)V

    .line 173
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd$5;->bwa:Lcom/kingroot/kinguser/bjd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjd;->c(Lcom/kingroot/kinguser/bjd;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 174
    return-void
.end method
