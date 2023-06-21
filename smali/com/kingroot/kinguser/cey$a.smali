.class Lcom/kingroot/kinguser/cey$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/cey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic bZp:Lcom/kingroot/kinguser/cey;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/cey;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/kingroot/kinguser/cey$a;->bZp:Lcom/kingroot/kinguser/cey;

    .line 78
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 79
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 83
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 89
    :goto_0
    return-void

    .line 85
    :pswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cey$a;->bZp:Lcom/kingroot/kinguser/cey;

    invoke-static {v0}, Lcom/kingroot/kinguser/cey;->a(Lcom/kingroot/kinguser/cey;)Z

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
