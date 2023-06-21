.class public Lcom/kingroot/kinguser/qs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EZ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ib()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/qs;->EZ:Ljava/lang/String;

    return-void
.end method
