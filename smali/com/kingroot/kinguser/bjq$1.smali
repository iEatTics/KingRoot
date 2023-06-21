.class Lcom/kingroot/kinguser/bjq$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bjq;->a(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bxV:I

.field final synthetic bxW:Lcom/kingroot/kinguser/bjq;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjq;I)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/kingroot/kinguser/bjq$1;->bxW:Lcom/kingroot/kinguser/bjq;

    iput p2, p0, Lcom/kingroot/kinguser/bjq$1;->bxV:I

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 233
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 234
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq$1;->bxW:Lcom/kingroot/kinguser/bjq;

    iget v1, p0, Lcom/kingroot/kinguser/bjq$1;->bxV:I

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bjq;->a(Lcom/kingroot/kinguser/bjq;I)V

    .line 235
    return-void
.end method
