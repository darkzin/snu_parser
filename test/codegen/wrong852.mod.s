##################################################
# test
#

    #-----------------------------------------
    # text section
    #
    .text
    .align 4

    # entry point and pre-defined functions
    .global main
    .extern DIM
    .extern DOFS
    .extern ReadInt
    .extern WriteInt
    .extern WriteStr
    .extern WriteChar
    .extern WriteLn

    # scope dummyINTfunc
dummyINTfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyINTfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyCHARfunc
dummyCHARfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyCHARfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyBOOLfunc
dummyBOOLfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyBOOLfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyProcedure
dummyProcedure:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyProcedure_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f0
f0:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 3 of <array 4 of <array 6 of <array 7 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 6 of <array 9 of <array 2 of <array 8 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 7 of <array 3 of <array 1 of <array 9 of <array 7 of <bool>>>>>>> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
l_f0_1_while_cond:
    movl    $37209, %eax            #   1:     if     37209 > 74644 goto 2_while_body
    movl    $74644, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    movl    $97, %eax               #   4:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #   5:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f0_1_while_cond       #   6:     goto   1_while_cond
l_f0_0:
l_f0_6_while_cond:
    call    dummyBOOLfunc           #   9:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  10:     if     t4 = 1 goto 7_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_7_while_body      
    jmp     l_f0_5                  #  11:     goto   5
l_f0_7_while_body:
    jmp     l_f0_6_while_cond       #  13:     goto   6_while_cond
l_f0_5:
l_f0_9_while_cond:
    jmp     l_f0_15                 #  16:     goto   15
    jmp     l_f0_15                 #  17:     goto   15
    jmp     l_f0_15                 #  18:     goto   15
l_f0_15:
    movl    $1, %eax                #  20:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_14                 #  21:     goto   14
    movl    $0, %eax                #  22:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f0_14:
    movl    $1, %eax                #  24:     if     1 # t5 goto 10_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_10_while_body     
    jmp     l_f0_8                  #  25:     goto   8
l_f0_10_while_body:
    jmp     l_f0_9_while_cond       #  27:     goto   9_while_cond
l_f0_8:

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 2 of <array 10 of <array 3 of <array 9 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #    -15(%ebp)   1  [ $v3       <char> %ebp-15 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    jmp     l_f1_1                  #   0:     goto   1
    jmp     l_f1_2                  #   1:     goto   2
l_f1_1:
    movl    $1, %eax                #   3:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   4:     goto   3
l_f1_2:
    movl    $0, %eax                #   6:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   8:     return t4
    jmp     l_f1_exit              
    movl    $100, %eax              #   9:     assign v3 <- 100
    movb    %al, -15(%ebp)         
    call    dummyBOOLfunc           #  10:     call   t5 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <ptr(4) to <array 2 of <array 2 of <array 10 of <array 3 of <array 9 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t7       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t8       <char> %ebp-23 ]
    #    -24(%ebp)   1  [ $t9       <bool> %ebp-24 ]
    #   -1128(%ebp)  1104  [ $v0       <array 2 of <array 2 of <array 10 of <array 3 of <array 9 of <bool>>>>>> %ebp-1128 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1116, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $279, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1128(%ebp)          # local array 'v0': 5 dimensions
    movl    $2,-1124(%ebp)          #   dimension 1: 2 elements
    movl    $2,-1120(%ebp)          #   dimension 2: 2 elements
    movl    $10,-1116(%ebp)         #   dimension 3: 10 elements
    movl    $3,-1112(%ebp)          #   dimension 4: 3 elements
    movl    $9,-1108(%ebp)          #   dimension 5: 9 elements

    # function body
    movl    $99, %eax               #   0:     if     99 # 98 goto 1
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_1                 
    jmp     l_f2_2                  #   1:     goto   2
l_f2_1:
    movl    $1, %eax                #   3:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $0, %eax                #   6:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   8:     param  2 <- t4
    pushl   %eax                   
    leal    -1128(%ebp), %eax       #   9:     &()    t5 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     param  1 <- t5
    pushl   %eax                   
    movl    $98, %eax               #  11:     if     98 > 97 goto 5
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_5                 
    jmp     l_f2_6                  #  12:     goto   6
l_f2_5:
    movl    $1, %eax                #  14:     assign t6 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_7                  #  15:     goto   7
l_f2_6:
    movl    $0, %eax                #  17:     assign t6 <- 0
    movb    %al, -21(%ebp)         
l_f2_7:
    movzbl  -21(%ebp), %eax         #  19:     param  0 <- t6
    pushl   %eax                   
    call    f1                      #  20:     call   t7 <- f1
    addl    $12, %esp              
    movb    %al, -22(%ebp)         
    call    dummyCHARfunc           #  21:     call   t8 <- dummyCHARfunc
    movb    %al, -23(%ebp)         
l_f2_12_while_cond:
    movl    $40710, %eax            #  23:     if     40710 > 75474 goto 13_while_body
    movl    $75474, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_13_while_body     
    jmp     l_f2_11                 #  24:     goto   11
l_f2_13_while_body:
    jmp     l_f2_16                 #  26:     goto   16
    jmp     l_f2_17                 #  27:     goto   17
l_f2_16:
    movl    $1, %eax                #  29:     assign t9 <- 1
    movb    %al, -24(%ebp)         
    jmp     l_f2_18                 #  30:     goto   18
l_f2_17:
    movl    $0, %eax                #  32:     assign t9 <- 0
    movb    %al, -24(%ebp)         
l_f2_18:
    movzbl  -24(%ebp), %eax         #  34:     return t9
    jmp     l_f2_exit              
    jmp     l_f2_12_while_cond      #  35:     goto   12_while_cond
l_f2_11:

l_f2_exit:
    # epilogue
    addl    $1116, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 2 of <array 2 of <array 10 of <array 3 of <array 9 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <bool> %ebp-22 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
l_test_1_while_cond:
    jmp     l_test_exit            
l_test_5_while_cond:
    jmp     l_test_5_while_cond     #   3:     goto   5_while_cond
    call    dummyBOOLfunc           #   4:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $1, %eax                #   5:     param  2 <- 1
    pushl   %eax                   
    leal    v0, %eax                #   6:     &()    t1 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     param  1 <- t1
    pushl   %eax                   
    movl    $45734, %eax            #   8:     if     45734 < 14975 goto 9
    movl    $14975, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_9               
    jmp     l_test_10               #   9:     goto   10
l_test_9:
    movl    $1, %eax                #  11:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_11               #  12:     goto   11
l_test_10:
    movl    $0, %eax                #  14:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_11:
    movzbl  -21(%ebp), %eax         #  16:     param  0 <- t2
    pushl   %eax                   
    call    f1                      #  17:     call   t3 <- f1
    addl    $12, %esp              
    movb    %al, -22(%ebp)         
    jmp     l_test_13               #  18:     goto   13
l_test_13:
    jmp     l_test_exit            
    jmp     l_test_1_while_cond     #  21:     goto   1_while_cond
    call    dummyProcedure          #  22:     call   dummyProcedure
l_test_19_while_cond:
    jmp     l_test_18               #  24:     goto   18
    movl    $99, %eax               #  25:     assign v1 <- 99
    movb    %al, v1                
    jmp     l_test_19_while_cond    #  26:     goto   19_while_cond
l_test_18:

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # end of text section
    #-----------------------------------------

    #-----------------------------------------
    # global data section
    #
    .data
    .align 4

    # scope: test
v0:                                 # <array 2 of <array 2 of <array 10 of <array 3 of <array 9 of <bool>>>>>>
    .long    5
    .long    2
    .long    2
    .long   10
    .long    3
    .long    9
    .skip 1080
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
