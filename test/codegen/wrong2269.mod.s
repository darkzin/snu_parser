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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t6       <char> %ebp-22 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 32 of <array 32 of <array 29 of <array 72 of <array 77 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 95 of <array 68 of <array 68 of <array 60 of <array 80 of <int>>>>>>> %ebp+20 ]
    #    -23(%ebp)   1  [ $v4       <char> %ebp-23 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $28650, %eax            #   1:     if     28650 >= 67693 goto 2_if_true
    movl    $67693, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   2:     goto   3_if_false
l_f0_2_if_true:
    call    ReadInt                 #   4:     call   t4 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $99, %eax               #   5:     if     99 < 99 goto 7_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_7_if_true         
    jmp     l_f0_8_if_false         #   6:     goto   8_if_false
l_f0_7_if_true:
    jmp     l_f0_6                  #   8:     goto   6
l_f0_8_if_false:
l_f0_6:
    call    dummyBOOLfunc           #  11:     call   t5 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    jmp     l_f0_1                  #  12:     goto   1
l_f0_3_if_false:
l_f0_1:
    call    dummyCHARfunc           #  15:     call   t6 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  16:     assign v4 <- t6
    movb    %al, -23(%ebp)         

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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 73 of <array 56 of <array 97 of <array 42 of <array 69 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 43 of <array 7 of <array 6 of <array 60 of <array 19 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]

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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
l_f1_4_while_cond:
    movl    $17504, %eax            #   2:     if     17504 # 42337 goto 5_while_body
    movl    $42337, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_5_while_body      
    jmp     l_f1_3                  #   3:     goto   3
l_f1_5_while_body:
    jmp     l_f1_4_while_cond       #   5:     goto   4_while_cond
l_f1_3:
    movl    $99, %eax               #   7:     return 99
    jmp     l_f1_exit              
    jmp     l_f1_0                  #   8:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyCHARfunc           #  11:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  12:     return t3
    jmp     l_f1_exit              
    call    dummyCHARfunc           #  13:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  14:     return t4
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
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 32 of <array 32 of <array 29 of <array 72 of <array 77 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t3       <ptr(4) to <array 43 of <array 7 of <array 6 of <array 60 of <array 19 of <char>>>>>>> %ebp-60 ]
    #    -64(%ebp)   4  [ $t4       <ptr(4) to <array 73 of <array 56 of <array 97 of <array 42 of <array 69 of <char>>>>>>> %ebp-64 ]
    #    -65(%ebp)   1  [ $t5       <char> %ebp-65 ]
    #    -72(%ebp)   4  [ $t6       <ptr(4) to <array 43 of <array 7 of <array 6 of <array 60 of <array 19 of <char>>>>>>> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <ptr(4) to <array 73 of <array 56 of <array 97 of <array 42 of <array 69 of <char>>>>>>> %ebp-76 ]
    #    -77(%ebp)   1  [ $t8       <char> %ebp-77 ]
    #    -84(%ebp)   4  [ $t9       <ptr(4) to <array 95 of <array 68 of <array 68 of <array 60 of <array 80 of <int>>>>>>> %ebp-84 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 60 of <array 49 of <array 27 of <array 27 of <array 60 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 13 of <array 98 of <array 14 of <array 17 of <array 89 of <bool>>>>>>> %ebp+12 ]
    #   -1149161436(%ebp)  1149161352  [ $v2       <array 73 of <array 56 of <array 97 of <array 42 of <array 69 of <char>>>>>> %ebp-1149161436 ]
    #   -1151220300(%ebp)  2058864  [ $v3       <array 43 of <array 7 of <array 6 of <array 60 of <array 19 of <char>>>>>> %ebp-1151220300 ]
    #   -1315854948(%ebp)  164634648  [ $v4       <array 32 of <array 32 of <array 29 of <array 72 of <array 77 of <char>>>>>> %ebp-1315854948 ]
    #   -1160096380(%ebp)  -155758568  [ $v5       <array 95 of <array 68 of <array 68 of <array 60 of <array 80 of <int>>>>>> %ebp-1160096380 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1160096368, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $290024092, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1149161436(%ebp)    # local array 'v2': 5 dimensions
    movl    $73,-1149161432(%ebp)   #   dimension 1: 73 elements
    movl    $56,-1149161428(%ebp)   #   dimension 2: 56 elements
    movl    $97,-1149161424(%ebp)   #   dimension 3: 97 elements
    movl    $42,-1149161420(%ebp)   #   dimension 4: 42 elements
    movl    $69,-1149161416(%ebp)   #   dimension 5: 69 elements
    movl    $5,-1151220300(%ebp)    # local array 'v3': 5 dimensions
    movl    $43,-1151220296(%ebp)   #   dimension 1: 43 elements
    movl    $7,-1151220292(%ebp)    #   dimension 2: 7 elements
    movl    $6,-1151220288(%ebp)    #   dimension 3: 6 elements
    movl    $60,-1151220284(%ebp)   #   dimension 4: 60 elements
    movl    $19,-1151220280(%ebp)   #   dimension 5: 19 elements
    movl    $5,-1315854948(%ebp)    # local array 'v4': 5 dimensions
    movl    $32,-1315854944(%ebp)   #   dimension 1: 32 elements
    movl    $32,-1315854940(%ebp)   #   dimension 2: 32 elements
    movl    $29,-1315854936(%ebp)   #   dimension 3: 29 elements
    movl    $72,-1315854932(%ebp)   #   dimension 4: 72 elements
    movl    $77,-1315854928(%ebp)   #   dimension 5: 77 elements
    movl    $5,-1160096380(%ebp)    # local array 'v5': 5 dimensions
    movl    $95,-1160096376(%ebp)   #   dimension 1: 95 elements
    movl    $68,-1160096372(%ebp)   #   dimension 2: 68 elements
    movl    $68,-1160096368(%ebp)   #   dimension 3: 68 elements
    movl    $60,-1160096364(%ebp)   #   dimension 4: 60 elements
    movl    $80,-1160096360(%ebp)   #   dimension 5: 80 elements

    # function body
    movl    $97, %eax               #   0:     param  2 <- 97
    pushl   %eax                   
    leal    -1151220300(%ebp), %eax #   1:     &()    t3 <- v3
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #   2:     param  1 <- t3
    pushl   %eax                   
    leal    -1149161436(%ebp), %eax #   3:     &()    t4 <- v2
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #   4:     param  0 <- t4
    pushl   %eax                   
    call    f1                      #   5:     call   t5 <- f1
    addl    $12, %esp              
    movb    %al, -65(%ebp)         
    movl    $27527, %eax            #   6:     if     27527 = 93711 goto 2_if_true
    movl    $93711, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   7:     goto   3_if_false
l_f2_2_if_true:
    movl    $98, %eax               #   9:     param  2 <- 98
    pushl   %eax                   
    leal    -1151220300(%ebp), %eax #  10:     &()    t6 <- v3
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  11:     param  1 <- t6
    pushl   %eax                   
    leal    -1149161436(%ebp), %eax #  12:     &()    t7 <- v2
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  13:     param  0 <- t7
    pushl   %eax                   
    call    f1                      #  14:     call   t8 <- f1
    addl    $12, %esp              
    movb    %al, -77(%ebp)         
    leal    -1160096380(%ebp), %eax #  15:     &()    t9 <- v5
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  16:     param  3 <- t9
    pushl   %eax                   
    leal    -1315854948(%ebp), %eax #  17:     &()    t10 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  18:     param  2 <- t10
    pushl   %eax                   
    movl    $40253, %eax            #  19:     add    t11 <- 40253, 82971
    movl    $82971, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  20:     param  1 <- t11
    pushl   %eax                   
    movl    $34192, %eax            #  21:     if     34192 # 57839 goto 7
    movl    $57839, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_7                 
    jmp     l_f2_8                  #  22:     goto   8
l_f2_7:
    movl    $1, %eax                #  24:     assign t12 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_9                  #  25:     goto   9
l_f2_8:
    movl    $0, %eax                #  27:     assign t12 <- 0
    movb    %al, -21(%ebp)         
l_f2_9:
    movzbl  -21(%ebp), %eax         #  29:     param  0 <- t12
    pushl   %eax                   
    call    f0                      #  30:     call   t13 <- f0
    addl    $16, %esp              
    movl    %eax, -28(%ebp)        
    jmp     l_f2_1                  #  31:     goto   1
l_f2_3_if_false:
l_f2_1:
l_f2_12_while_cond:
    movl    $80717, %eax            #  35:     sub    t14 <- 80717, 9448
    movl    $9448, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  36:     add    t15 <- t14, 52286
    movl    $52286, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  37:     add    t16 <- t15, 20921
    movl    $20921, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  38:     add    t17 <- t16, 62956
    movl    $62956, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  39:     add    t18 <- t17, 41353
    movl    $41353, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $54820, %eax            #  40:     sub    t19 <- 54820, 30124
    movl    $30124, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  41:     add    t20 <- t19, 87533
    movl    $87533, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -48(%ebp), %eax         #  42:     if     t18 <= t20 goto 13_while_body
    movl    -56(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_13_while_body     
    jmp     l_f2_11                 #  43:     goto   11
l_f2_13_while_body:
    jmp     l_f2_12_while_cond      #  45:     goto   12_while_cond
l_f2_11:

l_f2_exit:
    # epilogue
    addl    $1160096368, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 43 of <array 7 of <array 6 of <array 60 of <array 19 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 73 of <array 56 of <array 97 of <array 42 of <array 69 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]

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
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $98, %eax               #   2:     param  2 <- 98
    pushl   %eax                   
    leal    v1, %eax                #   3:     &()    t0 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     param  1 <- t0
    pushl   %eax                   
    leal    v0, %eax                #   5:     &()    t1 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     param  0 <- t1
    pushl   %eax                   
    call    f1                      #   7:     call   t2 <- f1
    addl    $12, %esp              
    movb    %al, -21(%ebp)         

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
v0:                                 # <array 73 of <array 56 of <array 97 of <array 42 of <array 69 of <char>>>>>>
    .long    5
    .long   73
    .long   56
    .long   97
    .long   42
    .long   69
    .skip 1149161328
v1:                                 # <array 43 of <array 7 of <array 6 of <array 60 of <array 19 of <char>>>>>>
    .long    5
    .long   43
    .long    7
    .long    6
    .long   60
    .long   19
    .skip 2058840








    # end of global data section
    #-----------------------------------------

    .end
##################################################
