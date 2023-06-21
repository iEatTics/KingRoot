.class Lcom/kingroot/kinguser/axf$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axf$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aYh:Lcom/kingroot/kinguser/axf$1;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axf$1;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/kingroot/kinguser/axf$1$1;->aYh:Lcom/kingroot/kinguser/axf$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/kingroot/kinguser/axf$1$1;->aYh:Lcom/kingroot/kinguser/axf$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/axf$1;->aYg:Lcom/kingroot/kinguser/axf;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axf;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 95
    return-void
.end method
