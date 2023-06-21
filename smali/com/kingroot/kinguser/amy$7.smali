.class public synthetic Lcom/kingroot/kinguser/amy$7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/amy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic azW:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 118
    invoke-static {}, Lcom/kingroot/kinguser/boq;->values()[Lcom/kingroot/kinguser/boq;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/kingroot/kinguser/amy$7;->azW:[I

    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/amy$7;->azW:[I

    sget-object v1, Lcom/kingroot/kinguser/boq;->bFF:Lcom/kingroot/kinguser/boq;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/boq;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
