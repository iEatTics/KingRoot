.class Lcom/kingroot/kinguser/awv$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/awv;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aVI:Lcom/kingroot/kinguser/awv;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/awv;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/kingroot/kinguser/awv$2;->aVI:Lcom/kingroot/kinguser/awv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/kingroot/kinguser/awv$2;->aVI:Lcom/kingroot/kinguser/awv;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/awv;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 231
    return-void
.end method
