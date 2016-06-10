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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $v0       <char> %ebp-14 ]

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
    movl    $97, %eax               #   0:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #   1:     call   WriteChar
    addl    $4, %esp               
    call    dummyCHARfunc           #   2:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     assign v0 <- t0
    movb    %al, -14(%ebp)         
    jmp     l_f0_3_if_true          #   4:     goto   3_if_true
    jmp     l_f0_3_if_true          #   5:     goto   3_if_true
    jmp     l_f0_4_if_false         #   6:     goto   4_if_false
l_f0_3_if_true:
    jmp     l_f0_10_if_false        #   8:     goto   10_if_false
    jmp     l_f0_8                  #   9:     goto   8
l_f0_10_if_false:
l_f0_8:
    jmp     l_f0_2                  #  12:     goto   2
l_f0_4_if_false:
l_f0_2:

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 7 of <char>>> %ebp-28 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 65 of <array 95 of <array 31 of <array 1 of <array 26 of <int>>>>>>> %ebp+12 ]
    #    -32(%ebp)   4  [ $v2       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $v3       <bool> %ebp-33 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $1, %eax                #   0:     if     1 # 0 goto 1_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    movl    $100, %eax              #   3:     assign v0 <- 100
    movb    %al, 8(%ebp)           
    movl    $79628, %eax            #   4:     assign v2 <- 79628
    movl    %eax, -32(%ebp)        
    movl    $99, %eax               #   5:     assign v0 <- 99
    movb    %al, 8(%ebp)           
    movl    $1, %eax                #   6:     if     1 # 0 goto 8
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_8                 
    jmp     l_f1_9                  #   7:     goto   9
l_f1_8:
    movl    $1, %eax                #   9:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_10                 #  10:     goto   10
l_f1_9:
    movl    $0, %eax                #  12:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_f1_10:
    movzbl  -13(%ebp), %eax         #  14:     assign v3 <- t0
    movb    %al, -33(%ebp)         
    jmp     l_f1_0                  #  15:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $69256, %eax            #  18:     mul    t1 <- 69256, 76890
    movl    $76890, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  19:     add    t2 <- t1, 95929
    movl    $95929, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  20:     return t2
    jmp     l_f1_exit              
    leal    _str_1, %eax            #  21:     &()    t3 <- _str_1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  22:     param  0 <- t3
    pushl   %eax                   
    call    WriteStr                #  23:     call   WriteStr
    addl    $4, %esp               

l_f1_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 65 of <array 95 of <array 31 of <array 1 of <array 26 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $v0       <int> %ebp-28 ]
    #   -19908252(%ebp)  19908224  [ $v1       <array 65 of <array 95 of <array 31 of <array 1 of <array 26 of <int>>>>>> %ebp-19908252 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $19908240, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $4977060, %ecx         
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-19908252(%ebp)      # local array 'v1': 5 dimensions
    movl    $65,-19908248(%ebp)     #   dimension 1: 65 elements
    movl    $95,-19908244(%ebp)     #   dimension 2: 95 elements
    movl    $31,-19908240(%ebp)     #   dimension 3: 31 elements
    movl    $1,-19908236(%ebp)      #   dimension 4: 1 elements
    movl    $26,-19908232(%ebp)     #   dimension 5: 26 elements

    # function body
    jmp     l_f2_1_if_true          #   0:     goto   1_if_true
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $29502, %eax            #   3:     assign v0 <- 29502
    movl    %eax, -28(%ebp)        
    jmp     l_f2_0                  #   4:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyBOOLfunc           #   7:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_8_if_false         #   8:     goto   8_if_false
    leal    -19908252(%ebp), %eax   #   9:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     param  1 <- t1
    pushl   %eax                   
    movl    $100, %eax              #  11:     param  0 <- 100
    pushl   %eax                   
    call    f1                      #  12:     call   t2 <- f1
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
l_f2_12_while_cond:
    jmp     l_f2_12_while_cond      #  14:     goto   12_while_cond
    movl    $98, %eax               #  15:     return 98
    jmp     l_f2_exit              
    jmp     l_f2_6                  #  16:     goto   6
l_f2_8_if_false:
l_f2_6:

l_f2_exit:
    # epilogue
    addl    $19908240, %esp         # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_test_exit            
l_test_2_while_cond:
    jmp     l_test_1                #   2:     goto   1
    jmp     l_test_1                #   3:     goto   1
    jmp     l_test_2_while_cond     #   4:     goto   2_while_cond
l_test_1:
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"








    # end of global data section
    #-----------------------------------------

    .end
##################################################
