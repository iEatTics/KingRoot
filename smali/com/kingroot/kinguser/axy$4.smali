.class Lcom/kingroot/kinguser/axy$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axy;->du(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bcw:Lcom/kingroot/kinguser/axy;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axy;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/kingroot/kinguser/axy$4;->bcw:Lcom/kingroot/kinguser/axy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/kingroot/kinguser/axy$4;->bcw:Lcom/kingroot/kinguser/axy;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 293
    return-void
.end method
