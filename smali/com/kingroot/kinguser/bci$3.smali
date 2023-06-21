.class Lcom/kingroot/kinguser/bci$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bid$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bci;->Ug()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bgu:Lcom/kingroot/kinguser/big;

.field final synthetic this$0:Lcom/kingroot/kinguser/bci;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bci;Lcom/kingroot/kinguser/big;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/kingroot/kinguser/bci$3;->this$0:Lcom/kingroot/kinguser/bci;

    iput-object p2, p0, Lcom/kingroot/kinguser/bci$3;->bgu:Lcom/kingroot/kinguser/big;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/kingroot/kinguser/bci$3;->bgu:Lcom/kingroot/kinguser/big;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/big;->dismiss()V

    .line 326
    return-void
.end method
