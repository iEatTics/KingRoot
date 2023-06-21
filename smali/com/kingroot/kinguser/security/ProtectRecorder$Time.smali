.class public abstract Lcom/kingroot/kinguser/security/ProtectRecorder$Time;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/rr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/security/ProtectRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "Time"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/security/ProtectRecorder;

.field public when:J


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/security/ProtectRecorder;)V
    .locals 2

    .prologue
    .line 79
    iput-object p1, p0, Lcom/kingroot/kinguser/security/ProtectRecorder$Time;->this$0:Lcom/kingroot/kinguser/security/ProtectRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/security/ProtectRecorder$Time;->when:J

    .line 81
    return-void
.end method
