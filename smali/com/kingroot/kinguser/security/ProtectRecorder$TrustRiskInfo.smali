.class public Lcom/kingroot/kinguser/security/ProtectRecorder$TrustRiskInfo;
.super Lcom/kingroot/kinguser/security/ProtectRecorder$Time;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/security/ProtectRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TrustRiskInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/kingroot/kinguser/security/ProtectRecorder;

.field public type:I


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/security/ProtectRecorder;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/kingroot/kinguser/security/ProtectRecorder$TrustRiskInfo;->this$0:Lcom/kingroot/kinguser/security/ProtectRecorder;

    .line 97
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/security/ProtectRecorder$Time;-><init>(Lcom/kingroot/kinguser/security/ProtectRecorder;)V

    .line 98
    iput-object p2, p0, Lcom/kingroot/kinguser/security/ProtectRecorder$TrustRiskInfo;->name:Ljava/lang/String;

    .line 99
    iput p3, p0, Lcom/kingroot/kinguser/security/ProtectRecorder$TrustRiskInfo;->type:I

    .line 100
    return-void
.end method
