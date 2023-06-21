.class public Lcom/kingroot/kinguser/security/ProtectRecorder$SafeApk;
.super Lcom/kingroot/kinguser/security/ProtectRecorder$Time;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/security/ProtectRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SafeApk"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public pkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/kingroot/kinguser/security/ProtectRecorder;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/security/ProtectRecorder;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/kingroot/kinguser/security/ProtectRecorder$SafeApk;->this$0:Lcom/kingroot/kinguser/security/ProtectRecorder;

    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/security/ProtectRecorder$Time;-><init>(Lcom/kingroot/kinguser/security/ProtectRecorder;)V

    .line 109
    iput-object p2, p0, Lcom/kingroot/kinguser/security/ProtectRecorder$SafeApk;->pkgName:Ljava/lang/String;

    .line 110
    return-void
.end method
