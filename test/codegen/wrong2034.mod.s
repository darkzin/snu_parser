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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]

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
    movl    $85510, %eax            #   1:     if     85510 = 6745 goto 2_while_body
    movl    $6745, %ebx            
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    movl    $97, %eax               #   4:     if     97 >= 100 goto 5_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   5:     goto   6_if_false
l_f0_5_if_true:
    jmp     l_f0_4                  #   7:     goto   4
l_f0_6_if_false:
l_f0_4:
l_f0_9_while_cond:
    jmp     l_f0_8                  #  11:     goto   8
    jmp     l_f0_9_while_cond       #  12:     goto   9_while_cond
l_f0_8:
    movl    $97, %eax               #  14:     if     97 >= 97 goto 12_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_12_if_true        
    jmp     l_f0_13_if_false        #  15:     goto   13_if_false
l_f0_12_if_true:
    jmp     l_f0_11                 #  17:     goto   11
l_f0_13_if_false:
l_f0_11:
    jmp     l_f0_1_while_cond       #  20:     goto   1_while_cond
l_f0_0:
    call    dummyBOOLfunc           #  22:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    WriteLn                 #  23:     call   WriteLn

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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 66 of <array 48 of <array 70 of <array 5 of <array 47 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #    -15(%ebp)   1  [ $v3       <bool> %ebp-15 ]

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
    movl    $56464, %eax            #   0:     if     56464 > 48121 goto 1_if_true
    movl    $48121, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    movl    $97, %eax               #   3:     assign v2 <- 97
    movb    %al, 16(%ebp)          
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    f0                      #   7:     call   t5 <- f0
    movb    %al, -13(%ebp)         
    jmp     l_f1_8                  #   8:     goto   8
    jmp     l_f1_8                  #   9:     goto   8
    movl    $1, %eax                #  10:     assign t6 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_9                  #  11:     goto   9
l_f1_8:
    movl    $0, %eax                #  13:     assign t6 <- 0
    movb    %al, -14(%ebp)         
l_f1_9:
    movzbl  -14(%ebp), %eax         #  15:     assign v3 <- t6
    movb    %al, -15(%ebp)         

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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 73 of <array 48 of <array 51 of <array 34 of <array 35 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 69 of <array 57 of <array 71 of <array 97 of <array 68 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 50 of <array 53 of <array 88 of <array 62 of <array 68 of <bool>>>>>>> %ebp+20 ]

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
    call    dummyINTfunc            #   0:     call   t5 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f2_3_if_false         #   1:     goto   3_if_false
l_f2_5_while_cond:
    jmp     l_f2_4                  #   3:     goto   4
    jmp     l_f2_5_while_cond       #   4:     goto   5_while_cond
l_f2_4:
    jmp     l_f2_9_if_false         #   6:     goto   9_if_false
    jmp     l_f2_7                  #   7:     goto   7
l_f2_9_if_false:
l_f2_7:
l_f2_11_while_cond:
    jmp     l_f2_10                 #  11:     goto   10
    jmp     l_f2_11_while_cond      #  12:     goto   11_while_cond
l_f2_10:
l_f2_14_while_cond:
    jmp     l_f2_13                 #  15:     goto   13
    jmp     l_f2_14_while_cond      #  16:     goto   14_while_cond
l_f2_13:
    jmp     l_f2_1                  #  18:     goto   1
l_f2_3_if_false:
l_f2_1:
    movl    $100, %eax              #  21:     return 100
    jmp     l_f2_exit              

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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <char> %ebp-29 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $92282, %eax            #   0:     div    t0 <- 92282, 97057
    movl    $97057, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t1 <- t0, 18617
    movl    $18617, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     mul    t2 <- t1, 64274
    movl    $64274, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     mul    t3 <- t2, 91590
    movl    $91590, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     param  0 <- t3
    pushl   %eax                   
    call    WriteInt                #   5:     call   WriteInt
    addl    $4, %esp               
    call    dummyCHARfunc           #   6:     call   t4 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    movl    $99, %eax               #   7:     if     99 = t4 goto 2_if_true
    movzbl  -29(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_2_if_true       
    jmp     l_test_3_if_false       #   8:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_1                #  10:     goto   1
l_test_3_if_false:
l_test_1:
    movl    $97, %eax               #  13:     assign v0 <- 97
    movb    %al, v0                

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
