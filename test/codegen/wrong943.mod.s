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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]

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
    movl    $98, %eax               #   0:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #   1:     call   WriteChar
    addl    $4, %esp               
l_f0_2_while_cond:
    movl    $25357, %eax            #   3:     if     25357 < 51828 goto 3_while_body
    movl    $51828, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_3_while_body      
    jmp     l_f0_1                  #   4:     goto   1
l_f0_3_while_body:
l_f0_6_while_cond:
    jmp     l_f0_6_while_cond       #   7:     goto   6_while_cond
l_f0_9_while_cond:
    jmp     l_f0_9_while_cond       #   9:     goto   9_while_cond
    jmp     l_f0_2_while_cond       #  10:     goto   2_while_cond
l_f0_1:
    call    dummyCHARfunc           #  12:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  13:     return t4
    jmp     l_f0_exit              

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 1 of <array 9 of <array 4 of <array 9 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 2 of <array 6 of <array 8 of <array 1 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 10 of <array 4 of <array 8 of <array 3 of <array 9 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]
    #    -44(%ebp)   4  [ $v5       <int> %ebp-44 ]

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
    movl    $64463, %eax            #   0:     div    t4 <- 64463, 10620
    movl    $10620, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $32912, %eax            #   1:     add    t5 <- 32912, t4
    movl    -20(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     return t5
    jmp     l_f1_exit              
l_f1_2_while_cond:
    jmp     l_f1_1                  #   4:     goto   1
    jmp     l_f1_2_while_cond       #   5:     goto   2_while_cond
l_f1_1:
    movl    $42205, %eax            #   7:     sub    t6 <- 42205, 20938
    movl    $20938, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   8:     sub    t7 <- t6, 43311
    movl    $43311, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   9:     sub    t8 <- t7, 12251
    movl    $12251, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  10:     add    t9 <- t8, 1129
    movl    $1129, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  11:     add    t10 <- t9, 99519
    movl    $99519, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  12:     assign v5 <- t10
    movl    %eax, -44(%ebp)        

l_f1_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 3 of <array 4 of <array 10 of <array 2 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]

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
    jmp     l_f2_exit              
    call    dummyCHARfunc           #   2:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     return t5
    jmp     l_f2_exit              
    jmp     l_f2_3_if_true          #   4:     goto   3_if_true
    movl    $67443, %eax            #   5:     if     67443 >= 44776 goto 3_if_true
    movl    $44776, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_3_if_true         
    jmp     l_f2_4_if_false         #   6:     goto   4_if_false
l_f2_3_if_true:
    jmp     l_f2_2                  #   8:     goto   2
l_f2_4_if_false:
l_f2_2:

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
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t3       <bool> %ebp-19 ]

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
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $100, %eax              #   1:     assign v0 <- 100
    movb    %al, v0                
    jmp     l_test_exit            
    movl    $86146, %eax            #   3:     assign v1 <- 86146
    movl    %eax, v1               
    jmp     l_test_5                #   4:     goto   5
    jmp     l_test_5                #   5:     goto   5
l_test_5:
    movl    $1, %eax                #   7:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_7                #   8:     goto   7
    movl    $0, %eax                #   9:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_7:
    movzbl  -17(%ebp), %eax         #  11:     assign v2 <- t1
    movb    %al, v2                
l_test_12_while_cond:
    call    dummyBOOLfunc           #  13:     call   t2 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  14:     if     t2 = 1 goto 22
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_22              
    jmp     l_test_16               #  15:     goto   16
l_test_22:
    jmp     l_test_16               #  17:     goto   16
    jmp     l_test_16               #  18:     goto   16
    jmp     l_test_16               #  19:     goto   16
    jmp     l_test_16               #  20:     goto   16
    movl    $1, %eax                #  21:     assign t3 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_test_17               #  22:     goto   17
l_test_16:
    movl    $0, %eax                #  24:     assign t3 <- 0
    movb    %al, -19(%ebp)         
l_test_17:
    movl    $1, %eax                #  26:     if     1 = t3 goto 13_while_body
    movzbl  -19(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_13_while_body   
    jmp     l_test_11               #  27:     goto   11
l_test_13_while_body:
    jmp     l_test_12_while_cond    #  29:     goto   12_while_cond
l_test_11:

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
    .align   4
v1:                                 # <int>
    .skip    4
v2:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
