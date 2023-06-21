.class Lcom/kingroot/kinguser/bci$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bid$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bci;->Ud()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bgv:Lcom/kingroot/kinguser/bid;

.field final synthetic this$0:Lcom/kingroot/kinguser/bci;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bci;Lcom/kingroot/kinguser/bid;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/kingroot/kinguser/bci$5;->this$0:Lcom/kingroot/kinguser/bci;

    iput-object p2, p0, Lcom/kingroot/kinguser/bci$5;->bgv:Lcom/kingroot/kinguser/bid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/kingroot/kinguser/bci$5;->bgv:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->dismiss()V

    .line 370
    return-void
.end method
