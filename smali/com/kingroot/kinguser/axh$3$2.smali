.class Lcom/kingroot/kinguser/axh$3$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axh$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aYK:Lcom/kingroot/kinguser/axh$3;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axh$3;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/kingroot/kinguser/axh$3$2;->aYK:Lcom/kingroot/kinguser/axh$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Lcom/kingroot/kinguser/axh$3$2;->aYK:Lcom/kingroot/kinguser/axh$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/axh$3;->aYH:Lcom/kingroot/kinguser/axh;

    invoke-static {v0}, Lcom/kingroot/kinguser/axh;->a(Lcom/kingroot/kinguser/axh;)Lcom/kingroot/kinguser/aqa;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/kingroot/kinguser/axh$3$2;->aYK:Lcom/kingroot/kinguser/axh$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/axh$3;->aYH:Lcom/kingroot/kinguser/axh;

    invoke-static {v0}, Lcom/kingroot/kinguser/axh;->a(Lcom/kingroot/kinguser/axh;)Lcom/kingroot/kinguser/aqa;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/aqa;->t(IZ)V

    .line 275
    :cond_0
    return-void
.end method
