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
    movl    $14635, %eax            #   0:     add    t3 <- 14635, 61410
    movl    $61410, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t4 <- t3, 31681
    movl    $31681, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t4
    jmp     l_f0_exit              
    movl    $94783, %eax            #   3:     return 94783
    jmp     l_f0_exit              
    call    dummyINTfunc            #   4:     call   t5 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    call    WriteLn                 #   5:     call   WriteLn
    jmp     l_f0_1                  #   6:     goto   1
l_f0_1:
l_f0_8_while_cond:
    movl    $59232, %eax            #   9:     sub    t6 <- 59232, 17630
    movl    $17630, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $23401, %eax            #  10:     add    t7 <- 23401, 14887
    movl    $14887, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  11:     if     t6 # t7 goto 9_while_body
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_9_while_body      
    jmp     l_f0_7                  #  12:     goto   7
l_f0_9_while_body:
    jmp     l_f0_8_while_cond       #  14:     goto   8_while_cond
l_f0_7:

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $v1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v2       <char> %ebp-21 ]

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
    movl    $67479, %eax            #   0:     assign v1 <- 67479
    movl    %eax, -20(%ebp)        
    movl    $100, %eax              #   1:     if     100 < 97 goto 2_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   2:     goto   3_if_false
l_f1_2_if_true:
    call    dummyBOOLfunc           #   4:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $95381, %eax            #   5:     return 95381
    jmp     l_f1_exit              
    jmp     l_f1_1                  #   6:     goto   1
l_f1_3_if_false:
l_f1_1:
    movl    $54735, %eax            #   9:     if     54735 >= 18179 goto 8_if_true
    movl    $18179, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_8_if_true         
    jmp     l_f1_9_if_false         #  10:     goto   9_if_false
l_f1_8_if_true:
    movl    $98, %eax               #  12:     assign v2 <- 98
    movb    %al, -21(%ebp)         
    jmp     l_f1_7                  #  13:     goto   7
l_f1_9_if_false:
l_f1_7:

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 3 of <array 9 of <array 8 of <array 5 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #    -20(%ebp)   4  [ $v3       <int> %ebp-20 ]

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
l_f2_1_while_cond:
    jmp     l_f2_2_while_body       #   1:     goto   2_while_body
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   4:     goto   1_while_cond
l_f2_0:
l_f2_7_while_cond:
    movl    $1, %eax                #   7:     if     1 = 1 goto 8_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_8_while_body      
    jmp     l_f2_6                  #   8:     goto   6
l_f2_8_while_body:
    movl    $0, %eax                #  10:     if     0 = 1 goto 11_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_11_if_true        
    jmp     l_f2_12_if_false        #  11:     goto   12_if_false
l_f2_11_if_true:
    jmp     l_f2_10                 #  13:     goto   10
l_f2_12_if_false:
l_f2_10:
    movl    $58707, %eax            #  16:     assign v3 <- 58707
    movl    %eax, -20(%ebp)        
    movl    $99, %eax               #  17:     assign v2 <- 99
    movb    %al, 12(%ebp)          
    jmp     l_f2_7_while_cond       #  18:     goto   7_while_cond
l_f2_6:
    call    dummyCHARfunc           #  20:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  21:     if     t3 >= 100 goto 17
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_17                
    jmp     l_f2_18                 #  22:     goto   18
l_f2_17:
    movl    $1, %eax                #  24:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_19                 #  25:     goto   19
l_f2_18:
    movl    $0, %eax                #  27:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f2_19:
    movzbl  -14(%ebp), %eax         #  29:     return t4
    jmp     l_f2_exit              

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]

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
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t1 <- t0, 99364
    movl    $99364, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     div    t2 <- t1, 26722
    movl    $26722, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     assign v0 <- t2
    movl    %eax, v0               
    movl    $12826, %eax            #   4:     param  0 <- 12826
    pushl   %eax                   
    call    WriteInt                #   5:     call   WriteInt
    addl    $4, %esp               
    movl    $98, %eax               #   6:     assign v1 <- 98
    movb    %al, v1                
    jmp     l_test_exit            

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
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
