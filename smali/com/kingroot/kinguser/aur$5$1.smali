.class Lcom/kingroot/kinguser/aur$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aur$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aSi:I

.field final synthetic aSj:Lcom/kingroot/kinguser/aur$5;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aur$5;I)V
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Lcom/kingroot/kinguser/aur$5$1;->aSj:Lcom/kingroot/kinguser/aur$5;

    iput p2, p0, Lcom/kingroot/kinguser/aur$5$1;->aSi:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/kingroot/kinguser/aur$5$1;->aSj:Lcom/kingroot/kinguser/aur$5;

    iget-object v0, v0, Lcom/kingroot/kinguser/aur$5;->this$0:Lcom/kingroot/kinguser/aur;

    invoke-static {v0}, Lcom/kingroot/kinguser/aur;->d(Lcom/kingroot/kinguser/aur;)Lcom/kingroot/kinguser/aui$b;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/aur$5$1;->aSi:I

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/aui$b;->gP(I)V

    .line 420
    return-void
.end method
