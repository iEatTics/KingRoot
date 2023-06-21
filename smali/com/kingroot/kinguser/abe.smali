.class public Lcom/kingroot/kinguser/abe;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final YV:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "p13"

    invoke-static {v0}, Lcom/kingroot/kinguser/zt;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/abe;->YV:Ljava/lang/String;

    return-void
.end method
