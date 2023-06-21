.class Lcom/kingroot/kinguser/axi$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axi;->a(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/axi;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axi;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/kingroot/kinguser/axi$9;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/kingroot/kinguser/axi$9;->this$0:Lcom/kingroot/kinguser/axi;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/axi;->a(Lcom/kingroot/kinguser/axi;I)V

    .line 253
    return-void
.end method
