.class Lcom/kingroot/kinguser/ayb$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bid$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ayb;->Ud()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/ayb;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ayb;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lcom/kingroot/kinguser/ayb$8;->this$0:Lcom/kingroot/kinguser/ayb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 470
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb$8;->this$0:Lcom/kingroot/kinguser/ayb;

    invoke-static {v0}, Lcom/kingroot/kinguser/ayb;->f(Lcom/kingroot/kinguser/ayb;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ayb$8;->this$0:Lcom/kingroot/kinguser/ayb;

    const-wide/32 v2, 0x7f0700fd

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/ayb;->V(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 471
    return-void
.end method
