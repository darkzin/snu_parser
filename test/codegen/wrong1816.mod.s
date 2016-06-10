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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]

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
    call    dummyINTfunc            #   0:     call   t4 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $48678, %eax            #   1:     div    t5 <- 48678, t4
    movl    -16(%ebp), %ebx        
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t5
    jmp     l_f0_exit              
l_f0_2_while_cond:
    jmp     l_f0_3_while_body       #   4:     goto   3_while_body
    jmp     l_f0_3_while_body       #   5:     goto   3_while_body
    jmp     l_f0_1                  #   6:     goto   1
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #   8:     goto   2_while_cond
l_f0_1:
    jmp     l_f0_10_if_false        #  10:     goto   10_if_false
    jmp     l_f0_10_if_false        #  11:     goto   10_if_false
    jmp     l_f0_8                  #  12:     goto   8
l_f0_10_if_false:
l_f0_8:

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $v0       <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $v1       <char> %ebp-45 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $36, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $100, %eax              #   0:     if     100 < 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    movl    $43642, %eax            #   3:     assign v0 <- 43642
    movl    %eax, -44(%ebp)        
    movl    $98, %eax               #   4:     assign v1 <- 98
    movb    %al, -45(%ebp)         
    jmp     l_f1_0                  #   5:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $25506, %eax            #   8:     sub    t4 <- 25506, 69713
    movl    $69713, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     sub    t5 <- t4, 74943
    movl    $74943, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     add    t6 <- t5, 52363
    movl    $52363, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  11:     add    t7 <- t6, 88632
    movl    $88632, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $92701, %eax            #  12:     mul    t8 <- 92701, 58364
    movl    $58364, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  13:     mul    t9 <- t8, 87027
    movl    $87027, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -32(%ebp), %eax         #  14:     sub    t10 <- t7, t9
    movl    -40(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  15:     param  0 <- t10
    pushl   %eax                   
    call    WriteInt                #  16:     call   WriteInt
    addl    $4, %esp               
l_f1_8_while_cond:
    jmp     l_f1_9_while_body       #  18:     goto   9_while_body
    jmp     l_f1_7                  #  19:     goto   7
l_f1_9_while_body:
    jmp     l_f1_8_while_cond       #  21:     goto   8_while_cond
l_f1_7:

l_f1_exit:
    # epilogue
    addl    $36, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t6       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 51 of <array 27 of <array 52 of <array 97 of <array 45 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 71 of <array 49 of <array 48 of <array 27 of <array 4 of <char>>>>>>> %ebp+12 ]

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
l_f2_1_while_cond:
    jmp     l_f2_2_while_body       #   1:     goto   2_while_body
    jmp     l_f2_2_while_body       #   2:     goto   2_while_body
    jmp     l_f2_2_while_body       #   3:     goto   2_while_body
    jmp     l_f2_2_while_body       #   4:     goto   2_while_body
    jmp     l_f2_2_while_body       #   5:     goto   2_while_body
l_f2_2_while_body:
    call    dummyBOOLfunc           #   7:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_1_while_cond       #   8:     goto   1_while_cond
    call    dummyCHARfunc           #   9:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
l_f2_12_while_cond:
    call    dummyBOOLfunc           #  11:     call   t6 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  12:     if     t6 = 1 goto 14
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_14                
    jmp     l_f2_11                 #  13:     goto   11
l_f2_14:
    jmp     l_f2_12_while_cond      #  15:     goto   12_while_cond
l_f2_11:

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]

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
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_test_exit            
    movl    $14763, %eax            #   2:     if     14763 <= 56825 goto 3_if_true
    movl    $56825, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_3_if_true       
    jmp     l_test_4_if_false       #   3:     goto   4_if_false
l_test_3_if_true:
    call    dummyCHARfunc           #   5:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    jmp     l_test_6                #   6:     goto   6
l_test_6:
    jmp     l_test_2                #   8:     goto   2
l_test_4_if_false:
l_test_2:
    call    f0                      #  11:     call   t2 <- f0
    movl    %eax, -24(%ebp)        
    jmp     l_test_exit            
    jmp     l_test_13               #  13:     goto   13
    jmp     l_test_13               #  14:     goto   13
l_test_13:
    movl    $1, %eax                #  16:     assign t3 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_test_15               #  17:     goto   15
    movl    $0, %eax                #  18:     assign t3 <- 0
    movb    %al, -25(%ebp)         
l_test_15:
    movzbl  -25(%ebp), %eax         #  20:     assign v0 <- t3
    movb    %al, v0                

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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
