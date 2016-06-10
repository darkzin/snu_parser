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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #    -41(%ebp)   1  [ $v1       <char> %ebp-41 ]

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
    call    dummyProcedure          #   0:     call   dummyProcedure
    movl    $97, %eax               #   1:     assign v1 <- 97
    movb    %al, -41(%ebp)         
    movl    $23891, %eax            #   2:     sub    t3 <- 23891, 75682
    movl    $75682, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     add    t4 <- t3, 5919
    movl    $5919, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     add    t5 <- t4, 65918
    movl    $65918, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     sub    t6 <- t5, 59709
    movl    $59709, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     add    t7 <- t6, 36773
    movl    $36773, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   7:     sub    t8 <- t7, 44694
    movl    $44694, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   8:     sub    t9 <- t8, 51038
    movl    $51038, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $75017, %eax            #   9:     if     75017 <= t9 goto 3_if_true
    movl    -40(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_3_if_true         
    jmp     l_f0_4_if_false         #  10:     goto   4_if_false
l_f0_3_if_true:
    movl    $39103, %eax            #  12:     if     39103 < 8246 goto 7_if_true
    movl    $8246, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f0_7_if_true         
    jmp     l_f0_8_if_false         #  13:     goto   8_if_false
l_f0_7_if_true:
    jmp     l_f0_6                  #  15:     goto   6
l_f0_8_if_false:
l_f0_6:
    jmp     l_f0_2                  #  18:     goto   2
l_f0_4_if_false:
l_f0_2:

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
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t5       <bool> %ebp-18 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]

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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    movl    $100, %eax              #   1:     if     100 <= 100 goto 4_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_4_if_true         
    jmp     l_f1_5_if_false         #   2:     goto   5_if_false
l_f1_4_if_true:
l_f1_8_while_cond:
    movl    $100, %eax              #   5:     if     100 > 99 goto 9_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_9_while_body      
    jmp     l_f1_7                  #   6:     goto   7
l_f1_9_while_body:
    jmp     l_f1_8_while_cond       #   8:     goto   8_while_cond
l_f1_7:
    call    WriteLn                 #  10:     call   WriteLn
    leal    _str_1, %eax            #  11:     &()    t3 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  12:     param  0 <- t3
    pushl   %eax                   
    call    WriteStr                #  13:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f1_3                  #  14:     goto   3
l_f1_5_if_false:
l_f1_3:
    jmp     l_f1_0                  #  17:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyCHARfunc           #  20:     call   t4 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $100, %eax              #  21:     if     100 > t4 goto 14
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_14                
    jmp     l_f1_15                 #  22:     goto   15
l_f1_14:
    movl    $1, %eax                #  24:     assign t5 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f1_16                 #  25:     goto   16
l_f1_15:
    movl    $0, %eax                #  27:     assign t5 <- 0
    movb    %al, -18(%ebp)         
l_f1_16:
    movzbl  -18(%ebp), %eax         #  29:     return t5
    jmp     l_f1_exit              
    jmp     l_f1_20_if_false        #  30:     goto   20_if_false
    jmp     l_f1_20_if_false        #  31:     goto   20_if_false
    jmp     l_f1_20_if_false        #  32:     goto   20_if_false
    jmp     l_f1_18                 #  33:     goto   18
l_f1_20_if_false:
l_f1_18:

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 16 of <array 62 of <array 47 of <array 87 of <array 96 of <char>>>>>>> %ebp+12 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t3
    jmp     l_f2_exit              
    call    dummyProcedure          #   2:     call   dummyProcedure
    call    dummyCHARfunc           #   3:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   4:     return t4
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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]

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
    movl    $97, %eax               #   1:     if     97 < 98 goto 7
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_7               
    jmp     l_test_8                #   2:     goto   8
l_test_7:
    movl    $1, %eax                #   4:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_9                #   5:     goto   9
l_test_8:
    movl    $0, %eax                #   7:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_9:
    movzbl  -14(%ebp), %eax         #   9:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_1                #  10:     goto   1
l_test_1:
    call    dummyProcedure          #  12:     call   dummyProcedure
    call    dummyCHARfunc           #  13:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
