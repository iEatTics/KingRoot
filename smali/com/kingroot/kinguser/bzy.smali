.class public Lcom/kingroot/kinguser/bzy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final bEf:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/kingroot/kinguser/cca;",
            ">;"
        }
    .end annotation
.end field

.field static bVX:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const-class v0, Lcom/kingroot/kinguser/cca;

    sput-object v0, Lcom/kingroot/kinguser/bzy;->bEf:Ljava/lang/Class;

    .line 20
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Lcom/kingroot/kinguser/bzy;->bEf:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingroot/kinguser/bzy;->bVX:[Ljava/lang/Class;

    .line 23
    return-void
.end method

.method static akn()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/kingroot/kinguser/bzy;->bVX:[Ljava/lang/Class;

    return-object v0
.end method
