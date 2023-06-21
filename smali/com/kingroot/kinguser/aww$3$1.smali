.class Lcom/kingroot/kinguser/aww$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aww$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aVQ:Lcom/kingroot/kinguser/aww$3;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aww$3;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/kingroot/kinguser/aww$3$1;->aVQ:Lcom/kingroot/kinguser/aww$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/kingroot/kinguser/aww$3$1;->aVQ:Lcom/kingroot/kinguser/aww$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/aww$3;->aVP:Lcom/kingroot/kinguser/aww;

    invoke-static {v0}, Lcom/kingroot/kinguser/aww;->f(Lcom/kingroot/kinguser/aww;)V

    .line 202
    return-void
.end method
