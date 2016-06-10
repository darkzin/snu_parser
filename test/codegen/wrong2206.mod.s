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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 61 of <array 44 of <array 29 of <array 22 of <array 74 of <char>>>>>>> %ebp+20 ]

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
l_f0_1_while_cond:
    jmp     l_f0_0                  #   1:     goto   0
    movl    $71810, %eax            #   2:     return 71810
    jmp     l_f0_exit              
    jmp     l_f0_1_while_cond       #   3:     goto   1_while_cond
l_f0_0:
    movl    $15492, %eax            #   5:     sub    t2 <- 15492, 95949
    movl    $95949, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     add    t3 <- t2, 95046
    movl    $95046, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     if     t3 >= 41665 goto 6_if_true
    movl    $41665, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_6_if_true         
    jmp     l_f0_7_if_false         #   8:     goto   7_if_false
l_f0_6_if_true:
    jmp     l_f0_9                  #  10:     goto   9
l_f0_9:
    jmp     l_f0_5                  #  12:     goto   5
l_f0_7_if_false:
l_f0_5:
    movl    $93662, %eax            #  15:     div    t4 <- 93662, 35863
    movl    $35863, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $78400, %eax            #  16:     sub    t5 <- 78400, t4
    movl    -24(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  17:     return t5
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t7       <bool> %ebp-33 ]
    #    -34(%ebp)   1  [ $t8       <bool> %ebp-34 ]

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
l_f1_1_while_cond:
    jmp     l_f1_2_while_body       #   1:     goto   2_while_body
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    call    dummyBOOLfunc           #   4:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_0:
    movl    $94016, %eax            #   7:     mul    t3 <- 94016, 97094
    movl    $97094, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     div    t4 <- t3, 23615
    movl    $23615, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    call    dummyINTfunc            #   9:     call   t5 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  10:     div    t6 <- t4, t5
    movl    -28(%ebp), %ebx        
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  11:     if     t6 < 1661 goto 7
    movl    $1661, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f1_7                 
    jmp     l_f1_8                  #  12:     goto   8
l_f1_7:
    movl    $1, %eax                #  14:     assign t7 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f1_9                  #  15:     goto   9
l_f1_8:
    movl    $0, %eax                #  17:     assign t7 <- 0
    movb    %al, -33(%ebp)         
l_f1_9:
    movzbl  -33(%ebp), %eax         #  19:     return t7
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #  20:     call   t8 <- dummyBOOLfunc
    movb    %al, -34(%ebp)         

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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 59 of <array 54 of <array 7 of <array 90 of <array 99 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 99 of <array 16 of <array 30 of <array 59 of <array 95 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]

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
    jmp     l_f2_5_if_false         #   0:     goto   5_if_false
    jmp     l_f2_3                  #   1:     goto   3
l_f2_5_if_false:
l_f2_3:
    jmp     l_f2_6                  #   4:     goto   6
l_f2_6:
    movl    $0, %eax                #   6:     return 0
    jmp     l_f2_exit              
    jmp     l_f2_0                  #   7:     goto   0
l_f2_0:
    call    dummyBOOLfunc           #   9:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    ReadInt                 #  10:     call   t3 <- ReadInt
    movl    %eax, -20(%ebp)        

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
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]

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
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $1, %eax                #   2:     assign v0 <- 1
    movb    %al, v0                
l_test_4_while_cond:
    call    dummyCHARfunc           #   4:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   5:     if     t0 < 97 goto 5_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_5_while_body    
    jmp     l_test_3                #   6:     goto   3
l_test_5_while_body:
    jmp     l_test_4_while_cond     #   8:     goto   4_while_cond
l_test_3:
l_test_8_while_cond:
    call    dummyBOOLfunc           #  11:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  12:     if     t1 = 1 goto 9_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_9_while_body    
    jmp     l_test_7                #  13:     goto   7
l_test_9_while_body:
    jmp     l_test_8_while_cond     #  15:     goto   8_while_cond
l_test_7:

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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
