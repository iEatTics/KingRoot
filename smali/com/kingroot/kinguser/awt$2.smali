.class Lcom/kingroot/kinguser/awt$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bie$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/awt;->Tu()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/awt;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/awt;)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lcom/kingroot/kinguser/awt$2;->this$0:Lcom/kingroot/kinguser/awt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 465
    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/kingroot/kinguser/awt$2;->this$0:Lcom/kingroot/kinguser/awt;

    invoke-static {v0}, Lcom/kingroot/kinguser/awt;->d(Lcom/kingroot/kinguser/awt;)Lcom/kingroot/kinguser/bid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->dismiss()V

    .line 468
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
