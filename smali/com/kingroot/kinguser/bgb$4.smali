.class Lcom/kingroot/kinguser/bgb$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bic$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bgb;->f(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic amB:I

.field final synthetic boE:Lcom/kingroot/kinguser/bgb;

.field final synthetic boG:Z


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bgb;ZI)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/kingroot/kinguser/bgb$4;->boE:Lcom/kingroot/kinguser/bgb;

    iput-boolean p2, p0, Lcom/kingroot/kinguser/bgb$4;->boG:Z

    iput p3, p0, Lcom/kingroot/kinguser/bgb$4;->amB:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 220
    if-eqz p2, :cond_0

    .line 221
    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfw;->aba()V

    .line 224
    :cond_0
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bgb$4;->boG:Z

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb$4;->boE:Lcom/kingroot/kinguser/bgb;

    invoke-static {v0}, Lcom/kingroot/kinguser/bgb;->g(Lcom/kingroot/kinguser/bgb;)V

    .line 229
    :goto_0
    return-void

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb$4;->boE:Lcom/kingroot/kinguser/bgb;

    iget v1, p0, Lcom/kingroot/kinguser/bgb$4;->amB:I

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bgb;->a(Lcom/kingroot/kinguser/bgb;I)V

    goto :goto_0
.end method
