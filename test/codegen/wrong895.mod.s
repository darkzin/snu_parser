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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #    -19(%ebp)   1  [ $v1       <bool> %ebp-19 ]

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
    movl    $1, %eax                #   0:     assign v1 <- 1
    movb    %al, -19(%ebp)         
    movl    $95987, %eax            #   1:     div    t0 <- 95987, 69020
    movl    $69020, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     if     t0 = 43383 goto 2
    movl    $43383, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_2                 
    jmp     l_f0_3                  #   3:     goto   3
l_f0_2:
    movl    $1, %eax                #   5:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_4                  #   6:     goto   4
l_f0_3:
    movl    $0, %eax                #   8:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_f0_4:
    movzbl  -17(%ebp), %eax         #  10:     return t1
    jmp     l_f0_exit              
    jmp     l_f0_7                  #  11:     goto   7
    jmp     l_f0_7                  #  12:     goto   7
l_f0_7:
    movl    $1, %eax                #  14:     assign t2 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f0_9                  #  15:     goto   9
    movl    $0, %eax                #  16:     assign t2 <- 0
    movb    %al, -18(%ebp)         
l_f0_9:
    movzbl  -18(%ebp), %eax         #  18:     return t2
    jmp     l_f0_exit              

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #    -36(%ebp)   4  [ $v2       <int> %ebp-36 ]

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
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v2 <- t0
    movl    %eax, -36(%ebp)        
    call    ReadInt                 #   2:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
l_f1_3_while_cond:
    movl    $53327, %eax            #   4:     add    t2 <- 53327, 22324
    movl    $22324, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     add    t3 <- t2, 21406
    movl    $21406, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #   7:     call   t4 <- f0
    addl    $4, %esp               
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #   8:     if     t4 = 1 goto 5
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_5                 
    jmp     l_f1_2                  #   9:     goto   2
l_f1_5:
    jmp     l_f1_3_while_cond       #  11:     goto   3_while_cond
l_f1_2:

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_2_if_true          #   1:     goto   2_if_true
    jmp     l_f2_3_if_false         #   2:     goto   3_if_false
l_f2_2_if_true:
    jmp     l_f2_11_if_false        #   4:     goto   11_if_false
    jmp     l_f2_9                  #   5:     goto   9
l_f2_11_if_false:
l_f2_9:
    jmp     l_f2_1                  #   8:     goto   1
l_f2_3_if_false:
l_f2_1:
l_f2_13_while_cond:
    call    dummyCHARfunc           #  12:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $98, %eax               #  13:     if     98 <= t1 goto 14_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_14_while_body     
    jmp     l_f2_12                 #  14:     goto   12
l_f2_14_while_body:
    jmp     l_f2_13_while_cond      #  16:     goto   13_while_cond
l_f2_12:

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
    movl    $9586, %eax             #   3:     assign v0 <- 9586
    movl    %eax, v0               
l_test_7_while_cond:
    jmp     l_test_7_while_cond     #   5:     goto   7_while_cond
    movl    $98, %eax               #   6:     assign v1 <- 98
    movb    %al, v1                
l_test_11_while_cond:
    jmp     l_test_10               #   8:     goto   10
    jmp     l_test_11_while_cond    #   9:     goto   11_while_cond
l_test_10:
    jmp     l_test_2_while_cond     #  11:     goto   2_while_cond
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
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
