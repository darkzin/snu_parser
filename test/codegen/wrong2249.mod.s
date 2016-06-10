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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 7 of <char>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $v0       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $v1       <char> %ebp-23 ]

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
    movl    $51537, %eax            #   0:     if     51537 # 31337 goto 1
    movl    $31337, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_1                 
    jmp     l_f0_2                  #   1:     goto   2
l_f0_1:
    movl    $1, %eax                #   3:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t1
    movb    %al, -22(%ebp)         
    jmp     l_f0_exit              
    movl    $98, %eax               #  10:     assign v1 <- 98
    movb    %al, -23(%ebp)         
    jmp     l_f0_5                  #  11:     goto   5
l_f0_5:
    call    dummyCHARfunc           #  13:     call   t2 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  14:     if     t2 >= 100 goto 11_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f0_11_if_true        
    jmp     l_f0_12_if_false        #  15:     goto   12_if_false
l_f0_11_if_true:
l_f0_15_while_cond:
    jmp     l_f0_14                 #  18:     goto   14
    jmp     l_f0_15_while_cond      #  19:     goto   15_while_cond
l_f0_14:
    movl    $25412, %eax            #  21:     if     25412 >= 35211 goto 18_if_true
    movl    $35211, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_18_if_true        
    jmp     l_f0_19_if_false        #  22:     goto   19_if_false
l_f0_18_if_true:
    jmp     l_f0_17                 #  24:     goto   17
l_f0_19_if_false:
l_f0_17:
    leal    _str_1, %eax            #  27:     &()    t3 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  28:     param  0 <- t3
    pushl   %eax                   
    call    WriteStr                #  29:     call   WriteStr
    addl    $4, %esp               
    call    dummyBOOLfunc           #  30:     call   t4 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    jmp     l_f0_10                 #  31:     goto   10
l_f0_12_if_false:
l_f0_10:

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $v0       <int> %ebp-40 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $100, %eax              #   0:     if     100 # 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
l_f1_5_while_cond:
    movl    $48374, %eax            #   4:     if     48374 < 85446 goto 6_while_body
    movl    $85446, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_6_while_body      
    jmp     l_f1_4                  #   5:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #   7:     goto   5_while_cond
l_f1_4:
    jmp     l_f1_8                  #   9:     goto   8
l_f1_8:
    jmp     l_f1_0                  #  11:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $96432, %eax            #  14:     mul    t1 <- 96432, 5826
    movl    $5826, %ebx            
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  15:     div    t2 <- t1, 91473
    movl    $91473, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     div    t3 <- t2, 69522
    movl    $69522, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  17:     return t3
    jmp     l_f1_exit              
    movl    $63827, %eax            #  18:     sub    t4 <- 63827, 3142
    movl    $3142, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $42188, %eax            #  19:     mul    t5 <- 42188, 68163
    movl    $68163, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  20:     sub    t6 <- t4, t5
    movl    -32(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  21:     assign v0 <- t6
    movl    %eax, -40(%ebp)        

l_f1_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 38 of <array 1 of <array 55 of <array 10 of <array 87 of <int>>>>>>> %ebp+12 ]
    #    -29(%ebp)   1  [ $v2       <bool> %ebp-29 ]

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
    movl    $98220, %eax            #   0:     if     98220 >= 97835 goto 1_if_true
    movl    $97835, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #   4:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f2_7_while_cond:
    jmp     l_f2_6                  #   6:     goto   6
    jmp     l_f2_7_while_cond       #   7:     goto   7_while_cond
l_f2_6:
    jmp     l_f2_exit              
    jmp     l_f2_0                  #  10:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_11_while_cond:
    movl    $73466, %eax            #  14:     sub    t2 <- 73466, 38804
    movl    $38804, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     sub    t3 <- t2, 77080
    movl    $77080, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  16:     add    t4 <- t3, 23588
    movl    $23588, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  17:     if     t4 < 4879 goto 12_while_body
    movl    $4879, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f2_12_while_body     
    jmp     l_f2_10                 #  18:     goto   10
l_f2_12_while_body:
    movl    $0, %eax                #  20:     assign v2 <- 0
    movb    %al, -29(%ebp)         
l_f2_16_while_cond:
    jmp     l_f2_16_while_cond      #  22:     goto   16_while_cond
    jmp     l_f2_exit              
    jmp     l_f2_11_while_cond      #  24:     goto   11_while_cond
l_f2_10:
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]

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
    movl    $99, %eax               #   0:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #   1:     call   WriteChar
    addl    $4, %esp               
    call    dummyBOOLfunc           #   2:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
