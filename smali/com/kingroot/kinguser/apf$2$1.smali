.class Lcom/kingroot/kinguser/apf$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/apg$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/apf$2;->onAnimationEnd(Lcom/android/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aHz:Lcom/kingroot/kinguser/apf$2;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/apf$2;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/kingroot/kinguser/apf$2$1;->aHz:Lcom/kingroot/kinguser/apf$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/kingroot/kinguser/apf$2$1;->aHz:Lcom/kingroot/kinguser/apf$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/apf$2;->aHy:Lcom/kingroot/kinguser/apf;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/apf;->dismiss()V

    .line 220
    return-void
.end method
