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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t5       <bool> %ebp-26 ]
    #    -27(%ebp)   1  [ $t6       <bool> %ebp-27 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t9       <bool> %ebp-37 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -44(%ebp)   4  [ $v1       <int> %ebp-44 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    call    dummyBOOLfunc           #   1:     call   t4 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
l_f0_5_while_cond:
    jmp     l_f0_5_while_cond       #   3:     goto   5_while_cond
    movl    $8634, %eax             #   4:     if     8634 <= 25297 goto 8
    movl    $25297, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_8                 
    jmp     l_f0_9                  #   5:     goto   9
l_f0_8:
    movl    $1, %eax                #   7:     assign t5 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_f0_10                 #   8:     goto   10
l_f0_9:
    movl    $0, %eax                #  10:     assign t5 <- 0
    movb    %al, -26(%ebp)         
l_f0_10:
    movzbl  -26(%ebp), %eax         #  12:     return t5
    jmp     l_f0_exit              
    movl    $1, %eax                #  13:     if     1 # 1 goto 13
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_13                
    jmp     l_f0_14                 #  14:     goto   14
l_f0_13:
    movl    $1, %eax                #  16:     assign t6 <- 1
    movb    %al, -27(%ebp)         
    jmp     l_f0_15                 #  17:     goto   15
l_f0_14:
    movl    $0, %eax                #  19:     assign t6 <- 0
    movb    %al, -27(%ebp)         
l_f0_15:
    movzbl  -27(%ebp), %eax         #  21:     return t6
    jmp     l_f0_exit              
l_f0_18_while_cond:
    movl    $100, %eax              #  23:     if     100 <= 100 goto 19_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_19_while_body     
    jmp     l_f0_17                 #  24:     goto   17
l_f0_19_while_body:
    jmp     l_f0_18_while_cond      #  26:     goto   18_while_cond
l_f0_17:
    jmp     l_f0_0                  #  28:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $34322, %eax            #  31:     sub    t7 <- 34322, 20860
    movl    $20860, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $63044, %eax            #  32:     sub    t8 <- 63044, 7426
    movl    $7426, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  33:     if     t7 >= t8 goto 22
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_22                
    jmp     l_f0_23                 #  34:     goto   23
l_f0_22:
    movl    $1, %eax                #  36:     assign t9 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_f0_24                 #  37:     goto   24
l_f0_23:
    movl    $0, %eax                #  39:     assign t9 <- 0
    movb    %al, -37(%ebp)         
l_f0_24:
    movzbl  -37(%ebp), %eax         #  41:     return t9
    jmp     l_f0_exit              
    movl    $48608, %eax            #  42:     div    t10 <- 48608, 84270
    movl    $84270, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  43:     mul    t11 <- t10, 87035
    movl    $87035, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $45175, %eax            #  44:     sub    t12 <- 45175, t11
    movl    -20(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  45:     assign v1 <- t12
    movl    %eax, -44(%ebp)        

l_f0_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t6       <char> %ebp-15 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 12 of <array 82 of <array 19 of <array 49 of <array 63 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 76 of <array 49 of <array 42 of <array 49 of <array 24 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

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
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t4
    jmp     l_f1_exit              
    movl    $97, %eax               #   2:     param  0 <- 97
    pushl   %eax                   
    call    f0                      #   3:     call   t5 <- f0
    addl    $4, %esp               
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #   4:     call   t6 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #   5:     return t6
    jmp     l_f1_exit              

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
    #    -20(%ebp)   4  [ $t5       <ptr(4) to <array 5 of <char>>> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    dummyBOOLfunc           #   0:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f2_5_while_cond:
    jmp     l_f2_4                  #   2:     goto   4
    jmp     l_f2_5_while_cond       #   3:     goto   5_while_cond
l_f2_4:
    leal    _str_1, %eax            #   5:     &()    t5 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     param  0 <- t5
    pushl   %eax                   
    call    WriteStr                #   7:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f2_1                  #   8:     goto   1
l_f2_1:
    jmp     l_f2_9_if_true          #  10:     goto   9_if_true
l_f2_9_if_true:
    movl    $32839, %eax            #  12:     param  0 <- 32839
    pushl   %eax                   
    call    WriteInt                #  13:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f2_8                  #  14:     goto   8
l_f2_8:

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    ReadInt                 #   1:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    call    ReadInt                 #   2:     call   t2 <- ReadInt
    movl    %eax, -24(%ebp)        
    call    dummyProcedure          #   3:     call   dummyProcedure
    movl    $80662, %eax            #   4:     sub    t3 <- 80662, 76637
    movl    $76637, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     assign v0 <- t3
    movl    %eax, v0               

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
    .align   4
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
