.class Lcom/kingroot/kinguser/axk$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bid$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axk;->Ud()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/axk;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axk;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/kingroot/kinguser/axk$3;->this$0:Lcom/kingroot/kinguser/axk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/kingroot/kinguser/axk$3;->this$0:Lcom/kingroot/kinguser/axk;

    invoke-static {v0}, Lcom/kingroot/kinguser/axk;->b(Lcom/kingroot/kinguser/axk;)V

    .line 374
    iget-object v0, p0, Lcom/kingroot/kinguser/axk$3;->this$0:Lcom/kingroot/kinguser/axk;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/axk;->b(Lcom/kingroot/kinguser/axk;I)I

    .line 375
    return-void
.end method
