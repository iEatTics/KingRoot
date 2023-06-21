.class Lcom/kingroot/kinguser/bgb$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bgb$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic boF:Lcom/kingroot/kinguser/bgb$2;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bgb$2;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/kingroot/kinguser/bgb$2$1;->boF:Lcom/kingroot/kinguser/bgb$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb$2$1;->boF:Lcom/kingroot/kinguser/bgb$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/bgb$2;->boE:Lcom/kingroot/kinguser/bgb;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bgb;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 125
    return-void
.end method
