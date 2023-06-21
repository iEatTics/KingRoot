.class Lcom/kingroot/kinguser/ahn$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ahn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field arc:Landroid/os/Handler$Callback;

.field ard:I


# direct methods
.method public constructor <init>(Landroid/os/Handler$Callback;I)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/kingroot/kinguser/ahn$a;->arc:Landroid/os/Handler$Callback;

    .line 74
    iput p2, p0, Lcom/kingroot/kinguser/ahn$a;->ard:I

    .line 75
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .prologue
    .line 82
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/kingroot/kinguser/ahn$a;->ard:I

    iget v1, p1, Landroid/os/Message;->what:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ahn$a;->arc:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/ahn$a;->arc:Landroid/os/Handler$Callback;

    .line 83
    invoke-interface {v0, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 82
    :goto_0
    return v0

    .line 83
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
