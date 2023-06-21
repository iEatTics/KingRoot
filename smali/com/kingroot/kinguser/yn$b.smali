.class public Lcom/kingroot/kinguser/yn$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/yn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataType;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDataType;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput-object p1, p0, Lcom/kingroot/kinguser/yn$b;->data:Ljava/lang/Object;

    .line 293
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/yn$b;->type:I

    .line 294
    iput-object p2, p0, Lcom/kingroot/kinguser/yn$b;->title:Ljava/lang/String;

    .line 295
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDataType;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    iput-object p2, p0, Lcom/kingroot/kinguser/yn$b;->title:Ljava/lang/String;

    .line 299
    iput-object p1, p0, Lcom/kingroot/kinguser/yn$b;->data:Ljava/lang/Object;

    .line 300
    iput p3, p0, Lcom/kingroot/kinguser/yn$b;->type:I

    .line 301
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    iput-object p1, p0, Lcom/kingroot/kinguser/yn$b;->title:Ljava/lang/String;

    .line 287
    const/4 v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/yn$b;->type:I

    .line 288
    return-void
.end method
