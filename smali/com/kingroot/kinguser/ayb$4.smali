.class Lcom/kingroot/kinguser/ayb$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ayb;->a(Landroid/os/Message;)V
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
    .line 250
    iput-object p1, p0, Lcom/kingroot/kinguser/ayb$4;->this$0:Lcom/kingroot/kinguser/ayb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb$4;->this$0:Lcom/kingroot/kinguser/ayb;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/ayb;->a(Lcom/kingroot/kinguser/ayb;I)V

    .line 254
    return-void
.end method
