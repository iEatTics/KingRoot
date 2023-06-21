.class Lcom/kingroot/kinguser/bga$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bic$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bga;->iF(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic amB:I

.field final synthetic this$0:Lcom/kingroot/kinguser/bga;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bga;I)V
    .locals 0

    .prologue
    .line 726
    iput-object p1, p0, Lcom/kingroot/kinguser/bga$8;->this$0:Lcom/kingroot/kinguser/bga;

    iput p2, p0, Lcom/kingroot/kinguser/bga$8;->amB:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 730
    if-eqz p2, :cond_0

    .line 731
    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfw;->aba()V

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$8;->this$0:Lcom/kingroot/kinguser/bga;

    iget v1, p0, Lcom/kingroot/kinguser/bga$8;->amB:I

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bga;->a(Lcom/kingroot/kinguser/bga;I)V

    .line 735
    return-void
.end method
