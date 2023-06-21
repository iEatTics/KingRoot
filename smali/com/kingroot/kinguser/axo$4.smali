.class Lcom/kingroot/kinguser/axo$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/axo;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axo;)V
    .locals 0

    .prologue
    .line 898
    iput-object p1, p0, Lcom/kingroot/kinguser/axo$4;->this$0:Lcom/kingroot/kinguser/axo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 901
    iget-object v0, p0, Lcom/kingroot/kinguser/axo$4;->this$0:Lcom/kingroot/kinguser/axo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/axo;->b(Lcom/kingroot/kinguser/axo;I)V

    .line 902
    return-void
.end method
