.class public interface abstract Lcom/kingroot/kinguser/bzl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final bVJ:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/kingroot/kinguser/bzl;->bVJ:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method
