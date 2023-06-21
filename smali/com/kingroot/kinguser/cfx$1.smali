.class Lcom/kingroot/kinguser/cfx$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/cfx;->amI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cdV:Lcom/kingroot/kinguser/cfx;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cfx;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/kingroot/kinguser/cfx$1;->cdV:Lcom/kingroot/kinguser/cfx;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfx$1;->cdV:Lcom/kingroot/kinguser/cfx;

    invoke-static {v0}, Lcom/kingroot/kinguser/cfx;->a(Lcom/kingroot/kinguser/cfx;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
