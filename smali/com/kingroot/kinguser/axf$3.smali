.class Lcom/kingroot/kinguser/axf$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axf;->du(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aYg:Lcom/kingroot/kinguser/axf;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axf;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/kingroot/kinguser/axf$3;->aYg:Lcom/kingroot/kinguser/axf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/kingroot/kinguser/axf$3;->aYg:Lcom/kingroot/kinguser/axf;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axf;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 318
    return-void
.end method
