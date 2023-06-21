.class Lcom/kingroot/kinguser/sh$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/sh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic GC:Lcom/kingroot/kinguser/sh;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/sh;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/kingroot/kinguser/sh$1;->GC:Lcom/kingroot/kinguser/sh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/kingroot/kinguser/sh$1$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/sh$1$1;-><init>(Lcom/kingroot/kinguser/sh$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 109
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 110
    return-void
.end method
