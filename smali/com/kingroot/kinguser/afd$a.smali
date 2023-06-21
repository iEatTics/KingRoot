.class Lcom/kingroot/kinguser/afd$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/afd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field ahg:Ljava/lang/String;

.field certMd5:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p1, p0, Lcom/kingroot/kinguser/afd$a;->ahg:Ljava/lang/String;

    .line 202
    iput-object p2, p0, Lcom/kingroot/kinguser/afd$a;->certMd5:Ljava/lang/String;

    .line 203
    return-void
.end method
